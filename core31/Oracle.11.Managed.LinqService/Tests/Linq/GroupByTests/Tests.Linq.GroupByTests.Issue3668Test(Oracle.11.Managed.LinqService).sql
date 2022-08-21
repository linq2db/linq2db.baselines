﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1
DECLARE @name Varchar2(4) -- String
SET     @name = 'test'
DECLARE @id_1 Int32
SET     @id_1 = 2

SELECT
	x."PersonID"
FROM
	"Person" x
WHERE
	(x."PersonID" = :id AND x."LastName" <> :name OR x."FirstName" <> :name AND x."PersonID" = :id_1)
GROUP BY
	x."PersonID"

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 1
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'test'
DECLARE @name Varchar2(4) -- String
SET     @name = 'test'
DECLARE @p_1 Int32
SET     @p_1 = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 1

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	(x."PersonID" = :ID AND x."LastName" <> :LastName OR x."FirstName" <> :name AND x."PersonID" = :p_1) AND
	x."PersonID" = :ID_1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 1
DECLARE @LastName Varchar2(4) -- String
SET     @LastName = 'test'
DECLARE @name Varchar2(4) -- String
SET     @name = 'test'
DECLARE @p_1 Int32
SET     @p_1 = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 2

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	(x."PersonID" = :ID AND x."LastName" <> :LastName OR x."FirstName" <> :name AND x."PersonID" = :p_1) AND
	x."PersonID" = :ID_1

