﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Gender Varchar2(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName Varchar2(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName Varchar2 -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName Varchar2(8) -- String
SET     @Name_LastName = 'Insert15'

INSERT INTO "Person"
(
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	:Gender,
	:Name_FirstName,
	:Name_MiddleName,
	:Name_LastName
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert15%' ESCAPE '~'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"Person" t1
WHERE
	t1."FirstName" LIKE 'Insert15%' ESCAPE '~'

