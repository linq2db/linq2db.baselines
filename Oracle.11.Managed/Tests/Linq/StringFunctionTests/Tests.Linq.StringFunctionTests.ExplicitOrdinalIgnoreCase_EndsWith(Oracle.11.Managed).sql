BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"CollatedTable" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @CaseSensitive Varchar2(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive Varchar2(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO "CollatedTable"
(
	"Id",
	"CaseSensitive",
	"CaseInsensitive"
)
VALUES
(
	:Id,
	:CaseSensitive,
	:CaseInsensitive
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	Lower(r."CaseSensitive") LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	Lower(r."CaseInsensitive") LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	Lower(r."CaseSensitive") LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"CollatedTable" r
WHERE
	Lower(r."CaseInsensitive") LIKE '%ststring' ESCAPE '~'

