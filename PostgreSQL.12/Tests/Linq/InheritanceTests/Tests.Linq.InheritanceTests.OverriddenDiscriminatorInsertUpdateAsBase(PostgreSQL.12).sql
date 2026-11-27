-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @SerialNumber Text(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType Text(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location Text(9) -- String
SET     @Location = 'Something'

INSERT INTO "DeviceInheritance"
(
	"Id",
	"SerialNumber",
	"DeviceType",
	"Location"
)
VALUES
(
	:Id,
	:SerialNumber,
	:DeviceType,
	:Location
)

-- PostgreSQL.12 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SerialNumber Text(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType Text(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO "DeviceInheritance"
(
	"Id",
	"SerialNumber",
	"DeviceType"
)
VALUES
(
	:Id,
	:SerialNumber,
	:DeviceType
)

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."DeviceType",
	t1."Id",
	t1."SerialNumber",
	t1."Location"
FROM
	"DeviceInheritance" t1
ORDER BY
	t1."Id"

-- PostgreSQL.12 PostgreSQL12
DECLARE @SerialNumber Text(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType Text(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location Text(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"DeviceInheritance"
SET
	"SerialNumber" = :SerialNumber,
	"DeviceType" = :DeviceType,
	"Location" = :Location
WHERE
	"DeviceInheritance"."Id" = :Id

-- PostgreSQL.12 PostgreSQL12
DECLARE @SerialNumber Text(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType Text(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"DeviceInheritance"
SET
	"SerialNumber" = :SerialNumber,
	"DeviceType" = :DeviceType
WHERE
	"DeviceInheritance"."Id" = :Id

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."DeviceType",
	t1."Id",
	t1."SerialNumber",
	t1."Location"
FROM
	"DeviceInheritance" t1
ORDER BY
	t1."Id"

