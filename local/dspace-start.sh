while (!</dev/tcp/db/5432) > /dev/null 2>&1
do
	sleep 1
done
