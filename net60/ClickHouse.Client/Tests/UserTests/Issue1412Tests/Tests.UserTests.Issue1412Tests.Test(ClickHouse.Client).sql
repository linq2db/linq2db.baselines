BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsResourceTypeDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WmsResourceTypeDTO
(
	Id        UUID,
	Width     Int32,
	Depth     Int32,
	Height    Int32,
	ShortName Nullable(String),
	Name      Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO WmsResourceTypeDTO
(
	Id,
	Width,
	Depth,
	Height,
	ShortName,
	Name
)
VALUES
(toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),toInt32(333),toInt32(256),toInt32(110),'RN','Resource Name')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WmsLoadCarrierDTO
(
	Id                          UUID,
	DontTouch                   Bool,
	Segmentation                Nullable(String),
	LastInventoryCheckTimeStamp Nullable(DateTime64(7)),
	FillingDegree               Nullable(Decimal128(10)),
	ErrorMessage                Nullable(String),
	IsVirtual                   Bool,
	RearrangementCount          Int32,
	TechnicalValues             Nullable(String),
	Length                      Nullable(Decimal128(10)),
	Width                       Nullable(Decimal128(10)),
	Height                      Nullable(Decimal128(10)),
	ResourcePointID             Nullable(UUID),
	WashingDate                 Nullable(DateTime64(7)),
	LastGlobalTaskID            Nullable(UUID),
	OriginalResourceID          Nullable(UUID),
	LengthClass                 Nullable(Int32),
	WidthClass                  Nullable(Int32),
	CurrentWeightOfResource     Nullable(Decimal128(10)),
	HeightClass                 Nullable(Int32),
	TypeID                      Nullable(UUID),
	ParentResourceID            Nullable(UUID),
	ResourceLabelNVE            Nullable(String),
	ResourceLabel               Nullable(String),
	Status                      Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO WmsLoadCarrierDTO
(
	Id,
	DontTouch,
	Segmentation,
	LastInventoryCheckTimeStamp,
	FillingDegree,
	ErrorMessage,
	IsVirtual,
	RearrangementCount,
	TechnicalValues,
	Length,
	Width,
	Height,
	ResourcePointID,
	WashingDate,
	LastGlobalTaskID,
	OriginalResourceID,
	LengthClass,
	WidthClass,
	CurrentWeightOfResource,
	HeightClass,
	TypeID,
	ParentResourceID,
	ResourceLabelNVE,
	ResourceLabel,
	Status
)
VALUES
(toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),false,NULL,NULL,NULL,NULL,false,toInt32(0),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),NULL,NULL,NULL,toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WMS_ResourceA

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WMS_ResourceA
(
	Id                          UUID,
	DontTouch                   Bool,
	Segmentation                Nullable(String),
	LastInventoryCheckTimeStamp Nullable(DateTime64(7)),
	FillingDegree               Nullable(Decimal128(10)),
	ErrorMessage                Nullable(String),
	IsVirtual                   Bool,
	RearrangementCount          Int32,
	TechnicalValues             Nullable(String),
	Length                      Nullable(Decimal128(10)),
	Width                       Nullable(Decimal128(10)),
	Height                      Nullable(Decimal128(10)),
	ResourcePointID             Nullable(UUID),
	WashingDate                 Nullable(DateTime64(7)),
	LastGlobalTaskID            Nullable(UUID),
	OriginalResourceID          Nullable(UUID),
	LengthClass                 Nullable(Int32),
	WidthClass                  Nullable(Int32),
	CurrentWeightOfResource     Nullable(Decimal128(10)),
	HeightClass                 Nullable(Int32),
	TypeID                      Nullable(UUID),
	ParentResourceID            Nullable(UUID),
	ResourceLabelNVE            Nullable(String),
	ResourceLabel               Nullable(String),
	Status                      Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO WMS_ResourceA
(
	Id,
	DontTouch,
	Segmentation,
	LastInventoryCheckTimeStamp,
	FillingDegree,
	ErrorMessage,
	IsVirtual,
	RearrangementCount,
	TechnicalValues,
	Length,
	Width,
	Height,
	ResourcePointID,
	WashingDate,
	LastGlobalTaskID,
	OriginalResourceID,
	LengthClass,
	WidthClass,
	CurrentWeightOfResource,
	HeightClass,
	TypeID,
	ParentResourceID,
	ResourceLabelNVE,
	ResourceLabel,
	Status
)
VALUES
(toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),false,NULL,NULL,NULL,NULL,false,toInt32(0),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),NULL,NULL,NULL,toInt32(0))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	res.Id,
	res.DontTouch,
	res.Segmentation,
	res.LastInventoryCheckTimeStamp,
	res.FillingDegree,
	res.ErrorMessage,
	res.IsVirtual,
	res.RearrangementCount,
	res.TechnicalValues,
	res.Length_1,
	res.Width,
	res.Height,
	res.ResourcePointID,
	res.WashingDate,
	res.LastGlobalTaskID,
	res.OriginalResourceID,
	res.LengthClass,
	res.WidthClass,
	res.CurrentWeightOfResource,
	res.HeightClass,
	res.TypeID,
	res.ParentResourceID,
	res.ResourceLabelNVE,
	res.ResourceLabel,
	res.Status,
	tpList.Id,
	tpList.Width,
	tpList.Depth,
	tpList.Height,
	tpList.ShortName,
	tpList.Name
FROM
	(
		SELECT
			t1.Id as Id,
			t1.DontTouch as DontTouch,
			t1.Segmentation as Segmentation,
			t1.LastInventoryCheckTimeStamp as LastInventoryCheckTimeStamp,
			t1.FillingDegree as FillingDegree,
			t1.ErrorMessage as ErrorMessage,
			t1.IsVirtual as IsVirtual,
			t1.RearrangementCount as RearrangementCount,
			t1.TechnicalValues as TechnicalValues,
			t1.Length as Length_1,
			t1.Width as Width,
			t1.Height as Height,
			t1.ResourcePointID as ResourcePointID,
			t1.WashingDate as WashingDate,
			t1.LastGlobalTaskID as LastGlobalTaskID,
			t1.OriginalResourceID as OriginalResourceID,
			t1.LengthClass as LengthClass,
			t1.WidthClass as WidthClass,
			t1.CurrentWeightOfResource as CurrentWeightOfResource,
			t1.HeightClass as HeightClass,
			t1.TypeID as TypeID,
			t1.ParentResourceID as ParentResourceID,
			t1.ResourceLabelNVE as ResourceLabelNVE,
			t1.ResourceLabel as ResourceLabel,
			t1.Status as Status
		FROM
			WmsLoadCarrierDTO t1
		UNION DISTINCT
		SELECT
			t2.Id as Id,
			t2.DontTouch as DontTouch,
			t2.Segmentation as Segmentation,
			t2.LastInventoryCheckTimeStamp as LastInventoryCheckTimeStamp,
			t2.FillingDegree as FillingDegree,
			t2.ErrorMessage as ErrorMessage,
			t2.IsVirtual as IsVirtual,
			t2.RearrangementCount as RearrangementCount,
			t2.TechnicalValues as TechnicalValues,
			t2.Length as Length_1,
			t2.Width as Width,
			t2.Height as Height,
			t2.ResourcePointID as ResourcePointID,
			t2.WashingDate as WashingDate,
			t2.LastGlobalTaskID as LastGlobalTaskID,
			t2.OriginalResourceID as OriginalResourceID,
			t2.LengthClass as LengthClass,
			t2.WidthClass as WidthClass,
			t2.CurrentWeightOfResource as CurrentWeightOfResource,
			t2.HeightClass as HeightClass,
			t2.TypeID as TypeID,
			t2.ParentResourceID as ParentResourceID,
			t2.ResourceLabelNVE as ResourceLabelNVE,
			t2.ResourceLabel as ResourceLabel,
			t2.Status as Status
		FROM
			WMS_ResourceA t2
	) res
		LEFT JOIN WmsResourceTypeDTO tpList ON res.TypeID = tpList.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WMS_ResourceA

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WmsResourceTypeDTO

