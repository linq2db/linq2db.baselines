-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	MAX(CASE
		WHEN t1."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	MIN(CASE
		WHEN t1."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	MAX(CASE
		WHEN t1."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	MIN(CASE
		WHEN t1."Id" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Item" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

