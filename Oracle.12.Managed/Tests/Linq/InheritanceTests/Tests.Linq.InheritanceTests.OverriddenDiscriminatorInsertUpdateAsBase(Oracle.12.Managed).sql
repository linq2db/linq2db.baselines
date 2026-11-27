-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @SerialNumber Varchar2(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType Varchar2(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location Varchar2(9) -- String
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

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SerialNumber Varchar2(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType Varchar2(7) -- String
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

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."DeviceType",
	t1."Id",
	t1."SerialNumber",
	t1."Location"
FROM
	"DeviceInheritance" t1
ORDER BY
	t1."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @SerialNumber Varchar2(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType Varchar2(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location Varchar2(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Int32
SET     @Id = 2

UPDATE
	"DeviceInheritance" t1
SET
	"SerialNumber" = :SerialNumber,
	"DeviceType" = :DeviceType,
	"Location" = :Location
WHERE
	t1."Id" = :Id

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @SerialNumber Varchar2(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType Varchar2(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"DeviceInheritance" t1
SET
	"SerialNumber" = :SerialNumber,
	"DeviceType" = :DeviceType
WHERE
	t1."Id" = :Id

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."DeviceType",
	t1."Id",
	t1."SerialNumber",
	t1."Location"
FROM
	"DeviceInheritance" t1
ORDER BY
	t1."Id"

