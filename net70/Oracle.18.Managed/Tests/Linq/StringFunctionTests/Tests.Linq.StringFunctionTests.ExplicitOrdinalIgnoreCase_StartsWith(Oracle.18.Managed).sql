﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"CollatedTable" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"CollatedTable" r
WHERE
	Lower(r."CaseSensitive") LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"CollatedTable" r
WHERE
	Lower(r."CaseInsensitive") LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"CollatedTable" r
WHERE
	Lower(r."CaseSensitive") LIKE 'testst%' ESCAPE '~'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"CollatedTable" r
WHERE
	Lower(r."CaseInsensitive") LIKE 'testst%' ESCAPE '~'

