-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"take"

-- SapHana.Native SapHana
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"n"

-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"take" OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT 4200000000 OFFSET :"n"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 1

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
LIMIT 1 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @n Integer -- Int32
SET     @n = 1

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
LIMIT 1 OFFSET :"n"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 1

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
LIMIT 1 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT 4200000000 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"take"

-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"take"

-- SapHana.Native SapHana
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"n"

-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"take" OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @n Integer -- Int32
SET     @n = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT 4200000000 OFFSET :"n"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 2

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
LIMIT 1 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @n Integer -- Int32
SET     @n = 2

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
LIMIT 1 OFFSET :"n"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 2

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
LIMIT 1 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT 4200000000 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"take"

-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"take"

-- SapHana.Native SapHana
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"n"

-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"take" OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT 4200000000 OFFSET :"n"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 3

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
LIMIT 1 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @n Integer -- Int32
SET     @n = 3

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
LIMIT 1 OFFSET :"n"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 3

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
LIMIT 1 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT 4200000000 OFFSET :"skip"

-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
ORDER BY
	"p"."PersonID"
LIMIT :"take"

