﻿BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert15'

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Gender Char(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarChar(8) -- String
SET     @Name_LastName = 'Insert15'

INSERT INTO "Person"
(
	"PersonID",
	"Gender",
	"FirstName",
	"MiddleName",
	"LastName"
)
VALUES
(
	GEN_ID("PersonID", 1),
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert15'

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert15'

