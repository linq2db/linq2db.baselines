-- PostgreSQL.9.5 PostgreSQL
DECLARE @low Varchar(36) -- String
SET     @low = '00000000-0000-0000-0000-000000000001'
DECLARE @high Varchar(36) -- String
SET     @high = '00000000-0000-0000-0000-000000000002'

SELECT
	r."Id",
	CASE
		WHEN r."Value" BETWEEN :low AND :high THEN True
		ELSE False
	END
FROM
	"BetweenTextRow" r
WHERE
	r."Value" NOT BETWEEN :high AND :high

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"BetweenTextRow" t1

