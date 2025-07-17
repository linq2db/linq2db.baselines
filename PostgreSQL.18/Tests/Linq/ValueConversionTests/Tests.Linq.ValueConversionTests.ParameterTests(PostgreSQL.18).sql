BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @testedList Varchar(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	t."Id",
	t."Value1",
	t."Value2"
FROM
	"ValueConversion" t
WHERE
	:testedList = t."Value2"

