-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @Count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT 0 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 0 ROWS

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @Count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 2
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 2

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 2 ROWS

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @Count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT 0 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 0 ROWS

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @Count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 1
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 1

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 1 ROWS

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @Count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 3
DECLARE @p Integer -- Int32
SET     @p = 4

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT 3 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 3 ROWS

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 3 ROWS FETCH NEXT 4 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @Count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT @count ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @count Integer -- Int32
SET     @count = 0

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET @count ROWS

-- Firebird.3 Firebird3
DECLARE @Count Integer -- Int32
SET     @Count = 0

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
FETCH NEXT 0 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 0 ROWS

-- Firebird.3 Firebird3
SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

