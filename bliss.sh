# a bliss shell command for easy, uploading, posting, and project sharing...
# put this in your .zshrc for easy bliss blogging, see the readme.md for instructions!
# it's easy!

function bliss() {

  if [ ! -z $1 ]; #if argument 1 exists...
  then
    # get the date...
    this_date=$(date +"%Y-%m-%d")
    this_year=$(date +"%Y")
    this_month=$(date +"%b")
    the_second=$(date +"%S")
    talk_link="./_posts/${this_year}"
    project_link="./_projects/${this_year}"

    # 1. make the talk post...need title and tag
    if [ $1 = "talk" ];
    then

      if [ ! -d "${talk_link}" ]; then
        #if there's no year directory
        mkdir ${talk_link}

      fi

      if [ ! -z $2 ]; #the filename is there...
      then

        if [ ! -z $3 ]; #the title is there...
        then

          if [ ! -z $4 ]; #the tag is there...
          then

              if [ -e ./tag/$4.md ];
              then

                sed "s/Talk title/$3/;s/talk date/${this_date}/;s/talk_tag/$4/" ./_templates/talks.md > ${talk_link}/${this_date}-$2.md

                echo "new talk made! tag is included..."

              else

                # makes the tag name uppercase
                upper_4=${(U)${4}:0:1}${${4}#?}

                # makes the tag file, since new
                sed "s/Tag Title/${upper_4} Talks/;s/tag name/$4/" ./_templates/tag_template.md > ./tag/$4.md

                sed "s/Talk title/$3/;s/talk date/${this_date}/;s/talk_tag/$4/" ./_templates/talks.md > ${talk_link}/${this_date}-$2.md

                echo "new talk made! tag is included..."

              fi

          else

            sed "s/Talk title/$3/;s/talk date/${this_date}/;" ./_templates/talks.md > ./somefile.md

            sed '5d' ./somefile.md > ${talk_link}/${this_date}-$2.md

            rm ./somefile.md

            echo "new talk made! no tags.."

          fi

        else

          sed "s/talk date/${this_date}/" ./_templates/talks.md > ${talk_link}/${this_date}-$2.md
          echo "new talk made! you set the title..."

        fi

      else

        sed "s/talk date/${this_date}/" ./_templates/talks.md > ${talk_link}/${this_date}-new-talk${the_second}.md
        echo "new talk made! you set the filename..."

      fi

    else

      if [ $1 = "project" ]; #if need a project
      then

        if [ ! -d "${project_link}" ]; then
          #if there's no year directory
          mkdir ${project_link}

        fi

        if [ ! -z $2 ]; #the filename is there...
        then

          if [ ! -z $3 ]; #the title is there...
          then

            sed "s/Proj Title/$3/;s/proj date/${this_date}/" ./_templates/projects.md > ${project_link}/$2.md

            echo "new project made! you set keywords and summary..."

          else

            sed "s/proj date/${this_date}/" ./_templates/projects.md > ${project_link}/$2.md

            echo "new project made! you set title, keywords, and summary..."

          fi

        else

          sed "s/proj date/${this_date}/" ./_templates/projects.md > ${project_link}/plain_project${the_second}.md

          echo "new project made! a plain template!"

        fi


      else

        #the uploads...
        if [ $1 = "upload" ];
        then

          upload_links=("others" "papers" "extras" "books" "articles")
          upload_base="./professional_files"
          is_inside="false"

            #files exist
            if [ ! -z $2 ]; #folders exist
            then

              if [ ! -z $3 ]; #files entered...
              then

                # loop through the various folders...
                if [ ! -d ${3} ] && [ ! -f ${3} ];
                then

                  echo "need valid directory or file path...typo?"

                else

                  for i in "${upload_links[@]}" #note: the '#' shows no. of elements
                  do
                  	if [ $2 = $i ]; then

                        cp -R $3 ${upload_base}/${i}

                        echo "uploaded the file! check ./professional_files/${i} for the file..."
                        is_inside="true"

                    fi

                  done

                  if [ ${is_inside} = "false" ];
                  then

                    echo "can't upload to that location! use the names in the ./professional_files folder..."

                  fi

                fi

              else

                echo "need which files in ./professional_files/${2} you want uploaded..."

              fi

            else

              echo "need which folder in ./professional_files you want uploaded..."

            fi

        else

          echo "can't bliss that, try upload, talk, or project..."

        fi

      fi

    fi

  else

    echo "need either talk, upload, or project..."

  fi

}
