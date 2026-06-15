-- YDB Ydb
DECLARE $paramCopy Int32
SET     $paramCopy = 1
DECLARE $p Int32
SET     $p = 0
DECLARE $p_1 Int32
SET     $p_1 = 2

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		p.PersonID = $paramCopy
;
$CTE_2 = 	SELECT
		p_1.PersonID as ID
	FROM
		Person p_1
	WHERE
		p_1.PersonID = $p
;
$CTE_3 = 	SELECT
		p_2.PersonID as ID
	FROM
		Person p_2
	WHERE
		$p_1 <> p_2.PersonID
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	) AND
	(t1.PersonID IN (
		SELECT
			t3.ID
		FROM
			$CTE_2 t3
	) OR t1.PersonID IN (
		SELECT
			t4.ID
		FROM
			$CTE_3 t4
	))

-- YDB Ydb
DECLARE $p Int32
SET     $p = 3
DECLARE $paramCopy Int32
SET     $paramCopy = 2
DECLARE $p_1 Int32
SET     $p_1 = 3

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		$p <> p.PersonID
;
$CTE_2 = 	SELECT
		p_1.PersonID as ID
	FROM
		Person p_1
	WHERE
		$paramCopy = p_1.PersonID
;
$CTE_3 = 	SELECT
		p_2.PersonID as ID
	FROM
		Person p_2
	WHERE
		$p_1 <> p_2.PersonID
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	) AND
	(t1.PersonID IN (
		SELECT
			t3.ID
		FROM
			$CTE_2 t3
	) OR t1.PersonID IN (
		SELECT
			t4.ID
		FROM
			$CTE_3 t4
	))

-- YDB Ydb
DECLARE $p Int32
SET     $p = 4
DECLARE $p_1 Int32
SET     $p_1 = 2
DECLARE $paramCopy Int32
SET     $paramCopy = 3

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		$p <> p.PersonID
;
$CTE_2 = 	SELECT
		p_1.PersonID as ID
	FROM
		Person p_1
	WHERE
		p_1.PersonID = $p_1
;
$CTE_3 = 	SELECT
		p_2.PersonID as ID
	FROM
		Person p_2
	WHERE
		p_2.PersonID = $paramCopy
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	) AND
	(t1.PersonID IN (
		SELECT
			t3.ID
		FROM
			$CTE_2 t3
	) OR t1.PersonID IN (
		SELECT
			t4.ID
		FROM
			$CTE_3 t4
	))

-- YDB Ydb
DECLARE $paramCopy Int32
SET     $paramCopy = 1
DECLARE $p Int32
SET     $p = 0
DECLARE $p_1 Int32
SET     $p_1 = 2

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		p.PersonID = $paramCopy
;
$CTE_2 = 	SELECT
		p_1.PersonID as ID
	FROM
		Person p_1
	WHERE
		p_1.PersonID = $p
;
$CTE_3 = 	SELECT
		p_2.PersonID as ID
	FROM
		Person p_2
	WHERE
		$p_1 <> p_2.PersonID
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	) AND
	(t1.PersonID IN (
		SELECT
			t3.ID
		FROM
			$CTE_2 t3
	) OR t1.PersonID IN (
		SELECT
			t4.ID
		FROM
			$CTE_3 t4
	))

-- YDB Ydb
DECLARE $p Int32
SET     $p = 4
DECLARE $p_1 Int32
SET     $p_1 = 2
DECLARE $paramCopy Int32
SET     $paramCopy = 3

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		$p <> p.PersonID
;
$CTE_2 = 	SELECT
		p_1.PersonID as ID
	FROM
		Person p_1
	WHERE
		p_1.PersonID = $p_1
;
$CTE_3 = 	SELECT
		p_2.PersonID as ID
	FROM
		Person p_2
	WHERE
		p_2.PersonID = $paramCopy
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	) AND
	(t1.PersonID IN (
		SELECT
			t3.ID
		FROM
			$CTE_2 t3
	) OR t1.PersonID IN (
		SELECT
			t4.ID
		FROM
			$CTE_3 t4
	))

-- YDB Ydb
DECLARE $p Int32
SET     $p = 3
DECLARE $paramCopy Int32
SET     $paramCopy = 2
DECLARE $p_1 Int32
SET     $p_1 = 3

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		$p <> p.PersonID
;
$CTE_2 = 	SELECT
		p_1.PersonID as ID
	FROM
		Person p_1
	WHERE
		$paramCopy = p_1.PersonID
;
$CTE_3 = 	SELECT
		p_2.PersonID as ID
	FROM
		Person p_2
	WHERE
		$p_1 <> p_2.PersonID
;

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			t2.ID
		FROM
			$CTE_1 t2
	) AND
	(t1.PersonID IN (
		SELECT
			t3.ID
		FROM
			$CTE_2 t3
	) OR t1.PersonID IN (
		SELECT
			t4.ID
		FROM
			$CTE_3 t4
	))

