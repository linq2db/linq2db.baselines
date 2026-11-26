-- PostgreSQL.11 PostgreSQL
SELECT
	CONCAT_WS(',', e."Value1", Coalesce(e."Name", ''), e."Id")
FROM
	"JoinProbeEntity" e

