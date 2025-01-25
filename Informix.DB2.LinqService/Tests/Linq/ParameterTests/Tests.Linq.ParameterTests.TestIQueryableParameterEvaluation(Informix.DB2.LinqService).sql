BeforeExecute
-- Informix.DB2 Informix
DECLARE @paramCopy Integer(4) -- Int32
SET     @paramCopy = 1
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 2

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			p.PersonID = @paramCopy AND t1.PersonID = p.PersonID
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			Person p_1
		WHERE
			p_1.PersonID = @ID AND t1.PersonID = p_1.PersonID
	) OR EXISTS(
		SELECT
			*
		FROM
			Person p_2
		WHERE
			@ID_1 <> p_2.PersonID AND t1.PersonID = p_2.PersonID
	))

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @paramCopy Integer(4) -- Int32
SET     @paramCopy = 2
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 3

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			@ID <> p.PersonID AND t1.PersonID = p.PersonID
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			Person p_1
		WHERE
			@paramCopy = p_1.PersonID AND t1.PersonID = p_1.PersonID
	) OR EXISTS(
		SELECT
			*
		FROM
			Person p_2
		WHERE
			@ID_1 <> p_2.PersonID AND t1.PersonID = p_2.PersonID
	))

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 2
DECLARE @paramCopy Integer(4) -- Int32
SET     @paramCopy = 3

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			@ID <> p.PersonID AND t1.PersonID = p.PersonID
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			Person p_1
		WHERE
			p_1.PersonID = @ID_1 AND t1.PersonID = p_1.PersonID
	) OR EXISTS(
		SELECT
			*
		FROM
			Person p_2
		WHERE
			p_2.PersonID = @paramCopy AND t1.PersonID = p_2.PersonID
	))

BeforeExecute
-- Informix.DB2 Informix
DECLARE @paramCopy Integer(4) -- Int32
SET     @paramCopy = 1
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 2

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			p.PersonID = @paramCopy AND t1.PersonID = p.PersonID
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			Person p_1
		WHERE
			p_1.PersonID = @ID AND t1.PersonID = p_1.PersonID
	) OR EXISTS(
		SELECT
			*
		FROM
			Person p_2
		WHERE
			@ID_1 <> p_2.PersonID AND t1.PersonID = p_2.PersonID
	))

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 2
DECLARE @paramCopy Integer(4) -- Int32
SET     @paramCopy = 3

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			@ID <> p.PersonID AND t1.PersonID = p.PersonID
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			Person p_1
		WHERE
			p_1.PersonID = @ID_1 AND t1.PersonID = p_1.PersonID
	) OR EXISTS(
		SELECT
			*
		FROM
			Person p_2
		WHERE
			p_2.PersonID = @paramCopy AND t1.PersonID = p_2.PersonID
	))

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @paramCopy Integer(4) -- Int32
SET     @paramCopy = 2
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 3

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Person p
		WHERE
			@ID <> p.PersonID AND t1.PersonID = p.PersonID
	) AND
	(EXISTS(
		SELECT
			*
		FROM
			Person p_1
		WHERE
			@paramCopy = p_1.PersonID AND t1.PersonID = p_1.PersonID
	) OR EXISTS(
		SELECT
			*
		FROM
			Person p_2
		WHERE
			@ID_1 <> p_2.PersonID AND t1.PersonID = p_2.PersonID
	))

