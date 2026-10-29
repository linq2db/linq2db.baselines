-- Firebird.2.5 Firebird
SELECT FIRST 1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT FIRST @n
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT SKIP @n
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 1
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
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT FIRST 1 SKIP @n
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
SELECT FIRST 1 SKIP 1
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
SELECT SKIP 2
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT FIRST @n
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 2
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT SKIP @n
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 2
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
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT FIRST 1 SKIP @n
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
SELECT FIRST 1 SKIP 2
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
SELECT SKIP 3
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 3
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT FIRST @n
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 3
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT SKIP @n
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 1 SKIP 3
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
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT FIRST 1 SKIP @n
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
SELECT FIRST 1 SKIP 3
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
SELECT SKIP 4
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"

-- Firebird.2.5 Firebird
SELECT FIRST 3
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

