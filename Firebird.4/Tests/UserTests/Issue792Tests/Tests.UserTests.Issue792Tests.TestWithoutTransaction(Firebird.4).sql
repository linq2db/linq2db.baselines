-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"AllTypes" "t1"

-- Firebird.4 Firebird4

SELECT * FROM (
	SELECT
		RDB$PACKAGE_NAME                                        AS PackageName,
		RDB$PROCEDURE_NAME                                      AS ProcedureName,
		RDB$DESCRIPTION                                         AS Description,
		RDB$PROCEDURE_SOURCE                                    AS Source,
		CASE WHEN RDB$PROCEDURE_TYPE = 1 THEN 'TF' ELSE 'P' END AS Type
	FROM RDB$PROCEDURES
	WHERE RDB$SYSTEM_FLAG = 0 AND (RDB$PRIVATE_FLAG IS NULL OR RDB$PRIVATE_FLAG = 0) AND RDB$PROCEDURE_TYPE IS NOT NULL
	UNION ALL
	SELECT
		RDB$PACKAGE_NAME,
		RDB$FUNCTION_NAME,
		RDB$DESCRIPTION,
		RDB$FUNCTION_SOURCE,
		'F'
	FROM RDB$FUNCTIONS
	WHERE RDB$SYSTEM_FLAG = 0  AND (RDB$PRIVATE_FLAG IS NULL OR RDB$PRIVATE_FLAG = 0)
) ORDER BY PackageName, ProcedureName

-- Firebird.4 Firebird4

SELECT
	p.RDB$PACKAGE_NAME                                   AS PackageName,
	p.RDB$PROCEDURE_NAME                                 AS ProcedureName,
	p.RDB$PARAMETER_NAME                                 AS ParameterName,
	p.RDB$PARAMETER_NUMBER                               AS Ordinal,
	p.RDB$PARAMETER_TYPE                                 AS Direction,
	p.RDB$DESCRIPTION                                    AS Decsription,
	f.RDB$FIELD_TYPE                                     AS Type,
	f.RDB$FIELD_SUB_TYPE                                 AS SubType,
	COALESCE(f.RDB$CHARACTER_LENGTH, f.RDB$FIELD_LENGTH) AS Length,
	f.RDB$FIELD_PRECISION                                AS "precision",
	f.RDB$FIELD_SCALE                                    AS Scale,
	COALESCE(f.RDB$NULL_FLAG, p.RDB$NULL_FLAG)           AS IsNullable
FROM RDB$PROCEDURE_PARAMETERS p
	INNER JOIN RDB$PROCEDURES pr ON p.RDB$PROCEDURE_NAME = pr.RDB$PROCEDURE_NAME
		AND (p.RDB$PACKAGE_NAME = pr.RDB$PACKAGE_NAME OR (p.RDB$PACKAGE_NAME IS NULL AND pr.RDB$PACKAGE_NAME IS NULL))
	LEFT JOIN RDB$FIELDS f ON p.RDB$FIELD_SOURCE = f.RDB$FIELD_NAME
WHERE p.RDB$SYSTEM_FLAG = 0 AND (pr.RDB$PROCEDURE_TYPE <> 1 OR p.RDB$PARAMETER_TYPE <> 1)
UNION ALL
SELECT
	p.RDB$PACKAGE_NAME,
	p.RDB$FUNCTION_NAME,
	p.RDB$ARGUMENT_NAME,
	p.RDB$ARGUMENT_POSITION,
	CASE WHEN fn.RDB$RETURN_ARGUMENT = p.RDB$ARGUMENT_POSITION THEN 2 ELSE 0 END,
	p.RDB$DESCRIPTION,
	COALESCE(f.RDB$FIELD_TYPE, p.RDB$FIELD_TYPE),
	COALESCE(f.RDB$FIELD_SUB_TYPE, p.RDB$FIELD_TYPE),
	COALESCE(f.RDB$CHARACTER_LENGTH, f.RDB$FIELD_LENGTH, p.RDB$CHARACTER_LENGTH, p.RDB$FIELD_LENGTH),
	COALESCE(f.RDB$FIELD_PRECISION, p.RDB$FIELD_PRECISION),
	COALESCE(f.RDB$FIELD_SCALE, p.RDB$FIELD_SCALE),
	COALESCE(f.RDB$NULL_FLAG, p.RDB$NULL_FLAG)
	FROM RDB$FUNCTION_ARGUMENTS p
		INNER JOIN RDB$FUNCTIONS fn ON p.RDB$FUNCTION_NAME = fn.RDB$FUNCTION_NAME
			AND (p.RDB$PACKAGE_NAME = fn.RDB$PACKAGE_NAME OR (p.RDB$PACKAGE_NAME IS NULL AND fn.RDB$PACKAGE_NAME IS NULL))
		LEFT JOIN RDB$FIELDS f ON p.RDB$FIELD_SOURCE = f.RDB$FIELD_NAME
WHERE p.RDB$SYSTEM_FLAG = 0

-- Firebird.4 Firebird4

"AddIssue792Record"

-- Firebird.4 Firebird4

SELECT * FROM "OutRefEnumTest"(NULL,NULL)

-- Firebird.4 Firebird4

SELECT * FROM "OutRefTest"(NULL,NULL,NULL,NULL)

-- Firebird.4 Firebird4

SELECT * FROM "Patient_SelectAll"

-- Firebird.4 Firebird4

SELECT * FROM "Patient_SelectByName"(NULL,NULL)

-- Firebird.4 Firebird4
DECLARE @PersonID Integer(4) -- Int32
SET     @PersonID = 0

"Person_Delete"

-- Firebird.4 Firebird4

SELECT * FROM "Person_Insert"(NULL,NULL,NULL,NULL)

-- Firebird.4 Firebird4

SELECT * FROM "Person_Insert_OutputParameter"(NULL,NULL,NULL,NULL)

-- Firebird.4 Firebird4

SELECT * FROM "Person_SelectAll"

-- Firebird.4 Firebird4

SELECT * FROM "Person_SelectByKey"(NULL)

-- Firebird.4 Firebird4

SELECT * FROM "Person_SelectByName"(NULL,NULL)

-- Firebird.4 Firebird4
DECLARE @PERSONID Integer(4) -- Int32
SET     @PERSONID = 0
DECLARE @FIRSTNAME VarChar(50) -- String
SET     @FIRSTNAME = ''
DECLARE @LASTNAME VarChar(50) -- String
SET     @LASTNAME = ''
DECLARE @MIDDLENAME VarChar(50) -- String
SET     @MIDDLENAME = ''
DECLARE @GENDER Char(1) -- String
SET     @GENDER = _utf8 x'00'

"Person_Update"

-- Firebird.4 Firebird4

SELECT * FROM "Scalar_DataReader"

-- Firebird.4 Firebird4

SELECT * FROM "Scalar_OutputParameter"

-- Firebird.4 Firebird4

SELECT * FROM "Scalar_ReturnParameter"

-- Firebird.4 Firebird4
DECLARE @I Integer(4) -- Int32
SET     @I = 0
DECLARE @O Integer(4) -- Int32
SET     @O = 0

TEST_PROCEDURE

-- Firebird.4 Firebird4

SELECT * FROM TEST_TABLE_FUNCTION(NULL)

-- Firebird.4 Firebird4

SELECT * FROM TEST_V4_TYPES(NULL,NULL,NULL,NULL,NULL)

-- Firebird.4 Firebird4
DECLARE @I Integer(4) -- Int32
SET     @I = 0
DECLARE @O Integer(4) -- Int32
SET     @O = 0

TEST_PACKAGE1.TEST_PROCEDURE

-- Firebird.4 Firebird4

SELECT * FROM TEST_PACKAGE1.TEST_TABLE_FUNCTION(NULL)

-- Firebird.4 Firebird4
DECLARE @I Integer(4) -- Int32
SET     @I = 0
DECLARE @O Integer(4) -- Int32
SET     @O = 0

TEST_PACKAGE2.TEST_PROCEDURE

-- Firebird.4 Firebird4

SELECT * FROM TEST_PACKAGE2.TEST_TABLE_FUNCTION(NULL)

RollbackTransaction
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"AllTypes" "t1"

-- Firebird.4 Firebird4

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1"."char20DataType" = 'issue792'

