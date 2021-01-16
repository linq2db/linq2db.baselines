BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "Person" ALTER COLUMN "PersonID" RESTART WITH 5

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 5
DECLARE @i_1 Integer(4) -- Int32
SET     @i_1 = 0
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Integer(4) -- Int32
SET     @i = 0

MERGE INTO "Patient" "t1"
USING (SELECT @id AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = RTrim(Char(CHARACTER_LENGTH("t1"."Diagnosis",CODEUNITS32) + @i_1))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		@id,
		RTrim(Char(CHARACTER_LENGTH(@diagnosis,CODEUNITS32) + @i))
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 5
DECLARE @i_1 Integer(4) -- Int32
SET     @i_1 = 1
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Integer(4) -- Int32
SET     @i = 1

MERGE INTO "Patient" "t1"
USING (SELECT @id AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = RTrim(Char(CHARACTER_LENGTH("t1"."Diagnosis",CODEUNITS32) + @i_1))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		@id,
		RTrim(Char(CHARACTER_LENGTH(@diagnosis,CODEUNITS32) + @i))
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 5
DECLARE @i_1 Integer(4) -- Int32
SET     @i_1 = 2
DECLARE @diagnosis VarChar(3) -- String
SET     @diagnosis = 'abc'
DECLARE @i Integer(4) -- Int32
SET     @i = 2

MERGE INTO "Patient" "t1"
USING (SELECT @id AS "PersonID" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."PersonID" = "s"."PersonID"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Diagnosis" = RTrim(Char(CHARACTER_LENGTH("t1"."Diagnosis",CODEUNITS32) + @i_1))
WHEN NOT MATCHED THEN
	INSERT
	(
		"PersonID",
		"Diagnosis"
	)
	VALUES
	(
		@id,
		RTrim(Char(CHARACTER_LENGTH(@diagnosis,CODEUNITS32) + @i))
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 5

DELETE FROM
	"Patient" "t1"
WHERE
	"t1"."PersonID" = @id

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 5

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

