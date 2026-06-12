-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 2

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 3

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1), (2), (3)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxId Integer -- Int32
SET     @maxId = 1

SELECT
	c_1."Id"
FROM
	"Company" c_1
WHERE
	c_1."Id" <= :maxId
ORDER BY
	c_1."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	k_1.item,
	d."Id",
	d."CompanyId",
	d."Name",
	d."IsActive"
FROM
	(VALUES
		(1)
	) k_1(item)
		INNER JOIN "Department" d ON d."CompanyId" = k_1.item
ORDER BY
	d."Id"

