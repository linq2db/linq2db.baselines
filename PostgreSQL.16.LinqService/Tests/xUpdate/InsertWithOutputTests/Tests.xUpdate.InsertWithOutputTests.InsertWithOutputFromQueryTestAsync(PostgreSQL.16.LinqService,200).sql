﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @param Integer -- Int32
SET     @param = 200

SELECT
	s."Id" + :param,
	s."Value" + :param,
	s."ValueStr" || :param
FROM
	"TableWithData" s
WHERE
	s."Id" > 3

