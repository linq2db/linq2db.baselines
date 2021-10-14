BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"PersonID"
FROM
	NEW TABLE
	(
		INSERT INTO "Person"
		(
			"FirstName",
			"LastName",
			"Gender"
		)
		VALUES
		(
			'John',
			'Shepard',
			'M'
		)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id_1 Integer(4) -- Int32
SET     @id_1 = 5
DECLARE @i Integer(4) -- Int32
SET     @i = 0
DECLARE @id Integer(4) -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT @id_1 AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = RTrim(Char(CHARACTER_LENGTH("t1"."Diagnosis",CODEUNITS32) + @i))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		@id,
		'abc'
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id_1 Integer(4) -- Int32
SET     @id_1 = 5
DECLARE @i Integer(4) -- Int32
SET     @i = 1
DECLARE @id Integer(4) -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT @id_1 AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = RTrim(Char(CHARACTER_LENGTH("t1"."Diagnosis",CODEUNITS32) + @i))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		@id,
		'abc'
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id_1 Integer(4) -- Int32
SET     @id_1 = 5
DECLARE @i Integer(4) -- Int32
SET     @i = 2
DECLARE @id Integer(4) -- Int32
SET     @id = 5

MERGE INTO "Patient" "t1"
USING (SELECT @id_1 AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = RTrim(Char(CHARACTER_LENGTH("t1"."Diagnosis",CODEUNITS32) + @i))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		@id,
		'abc'
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 5

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	"p"."PersonID" = @id
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 5

DELETE FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = @id

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

