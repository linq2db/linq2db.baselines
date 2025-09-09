BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert16'

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @name Integer -- Int32
SET     @name = 8
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
	CAST(@name AS Int) + CAST(@idx AS Int),
	'M'
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert16'

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert16'

