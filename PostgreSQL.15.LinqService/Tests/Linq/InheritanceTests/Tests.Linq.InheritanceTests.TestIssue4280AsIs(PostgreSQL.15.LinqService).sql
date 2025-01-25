BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @SerialNumber Text(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType Text(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location Text(9) -- String
SET     @Location = 'Something'

INSERT INTO "Issue4280"
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SerialNumber Text(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType Text(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO "Issue4280"
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

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."DeviceType",
	t1."Id",
	t1."SerialNumber",
	t1."Location"
FROM
	"Issue4280" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @SerialNumber Text(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType Text(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location Text(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"Issue4280"
SET
	"SerialNumber" = :SerialNumber,
	"DeviceType" = :DeviceType,
	"Location" = :Location
WHERE
	"Issue4280"."Id" = :Id

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @SerialNumber Text(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType Text(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"Issue4280"
SET
	"SerialNumber" = :SerialNumber,
	"DeviceType" = :DeviceType
WHERE
	"Issue4280"."Id" = :Id

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."DeviceType",
	t1."Id",
	t1."SerialNumber",
	t1."Location"
FROM
	"Issue4280" t1
ORDER BY
	t1."Id"

