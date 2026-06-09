-- YDB Ydb

INSERT INTO SampleClass
(
	Id,
	`Value`,
	Value2
)
VALUES
(
	1,
	'Test'u,
	'SampleClass'u
)

-- YDB Ydb

INSERT INTO SampleClass
(
	Id,
	`Value`,
	Value2
)
VALUES
(
	2,
	'Value'u,
	'SomeTest'u
)

-- YDB Ydb
DECLARE $test Text(4) -- String
SET     $test = 'Test'u
DECLARE $test_1 Text(6) -- String
SET     $test_1 = '%Test%'u

SELECT
	EXISTS(
		SELECT
			1
		FROM
			SampleClass sampleClass_1
		WHERE
			sampleClass_1.`Value` = $test OR sampleClass_1.Value2 LIKE $test_1 ESCAPE '~'s
	) as c1

-- YDB Ydb
DECLARE $test Text(4) -- String
SET     $test = 'Test'u
DECLARE $test_1 Text(6) -- String
SET     $test_1 = '%Test%'u

SELECT
	COUNT(*) as Count_1
FROM
	SampleClass sampleClass_1
WHERE
	sampleClass_1.`Value` = $test OR sampleClass_1.Value2 LIKE $test_1 ESCAPE '~'s

-- YDB Ydb
DECLARE $test Text(5) -- String
SET     $test = 'Value'u
DECLARE $test_1 Text(7) -- String
SET     $test_1 = '%Value%'u

SELECT
	EXISTS(
		SELECT
			1
		FROM
			SampleClass sampleClass_1
		WHERE
			sampleClass_1.`Value` = $test OR sampleClass_1.Value2 LIKE $test_1 ESCAPE '~'s
	) as c1

-- YDB Ydb
DECLARE $test Text(5) -- String
SET     $test = 'Value'u
DECLARE $test_1 Text(7) -- String
SET     $test_1 = '%Value%'u

SELECT
	COUNT(*) as Count_1
FROM
	SampleClass sampleClass_1
WHERE
	sampleClass_1.`Value` = $test OR sampleClass_1.Value2 LIKE $test_1 ESCAPE '~'s

-- YDB Ydb
DECLARE $test Text(5) -- String
SET     $test = 'Class'u
DECLARE $test_1 Text(7) -- String
SET     $test_1 = '%Class%'u

SELECT
	EXISTS(
		SELECT
			1
		FROM
			SampleClass sampleClass_1
		WHERE
			sampleClass_1.`Value` = $test OR sampleClass_1.Value2 LIKE $test_1 ESCAPE '~'s
	) as c1

-- YDB Ydb
DECLARE $test Text(5) -- String
SET     $test = 'Class'u
DECLARE $test_1 Text(7) -- String
SET     $test_1 = '%Class%'u

SELECT
	COUNT(*) as Count_1
FROM
	SampleClass sampleClass_1
WHERE
	sampleClass_1.`Value` = $test OR sampleClass_1.Value2 LIKE $test_1 ESCAPE '~'s

