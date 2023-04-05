# 명령어를 변수로 $()
# 변수로 만든 것을 사용 ${}

#  동적 경로 변수 설정
projects_dir=$(dirname $0) 
echo ${projects_dir}

project_name="mybatis_project"
project_repo="https://github.com/jaybon1/${project_name}.git"

git clone ${project_repo}

# -R 붙이면 재귀, 폴더 안에 있는 모든게 적용 됨
chmod -R 777 ${projects_dir}/${project_name}

# cd ./mybatis_project
cd ${projects_dir}/${project_name} 
./gradlew bootJar

cd ./build/libs

java -jar my*.jar   