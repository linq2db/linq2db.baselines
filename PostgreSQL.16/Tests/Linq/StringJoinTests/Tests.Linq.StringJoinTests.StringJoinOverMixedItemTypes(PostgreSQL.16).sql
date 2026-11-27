-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CONCAT_WS(',', e."Value1", Coalesce(e."Name", ''), e."Id")
FROM
	"JoinProbeEntity" e

