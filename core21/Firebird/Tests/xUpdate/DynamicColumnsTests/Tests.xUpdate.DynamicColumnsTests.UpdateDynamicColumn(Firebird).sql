BeforeExecute
-- Firebird

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

BeforeExecute
-- Firebird

UPDATE
	"Person"
SET
	"Person"."FirstName" = 'Johnny'
WHERE
	"Person"."LastName" = 'Limonadovy'

BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."LastName" = 'Limonadovy'

