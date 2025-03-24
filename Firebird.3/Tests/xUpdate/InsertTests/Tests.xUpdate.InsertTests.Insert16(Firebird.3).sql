BeforeExecute
--  Firebird.3 Firebird3

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert16'

BeforeExecute
--  Firebird.3 Firebird3
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
	Char_Length(CAST(@name AS VARCHAR(8))) + CAST(@idx AS Int),
	'M'
)

BeforeExecute
--  Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert16'

BeforeExecute
--  Firebird.3 Firebird3

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert16'

