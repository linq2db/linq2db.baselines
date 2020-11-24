BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%'

BeforeExecute
-- Firebird
DECLARE @name VarChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx Integer -- Int32
SET     @idx = 4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	Cast((Char_Length(Cast(@name as VarChar(255) CHARACTER SET UNICODE_FSS)) + Cast(@idx as Int)) as VarChar(11) CHARACTER SET UNICODE_FSS),
	'M'
)

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%'

BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%'

