-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	MAX(CASE
		WHEN t1."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	MIN(CASE
		WHEN t1."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	MAX(CASE
		WHEN t1."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	MIN(CASE
		WHEN t1."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	MAX(CASE
		WHEN CASE
			WHEN t1."Id" = 2 THEN True
			ELSE t1."Id" > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	MIN(CASE
		WHEN CASE
			WHEN t1."Id" = 2 THEN True
			ELSE t1."Id" > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

