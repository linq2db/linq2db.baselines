﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1
DECLARE @name VarChar(4) -- String
SET     @name = 'test'
DECLARE @id_1 Integer(4) -- Int32
SET     @id_1 = 2

SELECT
	x.PersonID
FROM
	Person x
WHERE
	(x.PersonID = @id AND x.LastName <> @name OR x.FirstName <> @name AND x.PersonID = @id_1)
GROUP BY
	x.PersonID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @name VarChar(4) -- String
SET     @name = 'test'
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 2
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 1

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	(x.PersonID = @ID AND x.LastName <> @LastName OR x.FirstName <> @name AND x.PersonID = @p_1) AND
	x.PersonID = @ID_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'test'
DECLARE @name VarChar(4) -- String
SET     @name = 'test'
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 2
DECLARE @ID_1 Integer(4) -- Int32
SET     @ID_1 = 2

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	(x.PersonID = @ID AND x.LastName <> @LastName OR x.FirstName <> @name AND x.PersonID = @p_1) AND
	x.PersonID = @ID_1

