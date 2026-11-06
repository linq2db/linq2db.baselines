-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 2 SKIP 1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 2 SKIP 1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT FIRST @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT SKIP @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 0

SELECT FIRST @p SKIP @p_1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT FIRST 1 SKIP @p
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT FIRST @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT SKIP @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 3
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 2

SELECT FIRST @p SKIP @p_1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT FIRST 1 SKIP @p
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT FIRST @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT SKIP @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 0

SELECT FIRST @p SKIP @p_1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT FIRST 1 SKIP @p
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT FIRST @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT SKIP @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT FIRST @p SKIP @p_1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT FIRST 1 SKIP @p
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT FIRST @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT SKIP @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 4
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 3

SELECT FIRST @p SKIP @p_1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT FIRST 1 SKIP @p
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT FIRST @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT SKIP @p
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 0

SELECT FIRST @p SKIP @p_1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT FIRST 1 SKIP @p
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"
ORDER BY
	"t1"."PersonID"

