BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WmsResourceTypeDTO

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS WmsResourceTypeDTO
(
	Id        UUID,
	Name      Nullable(String),
	ShortName Nullable(String),
	Height    Int32,
	Depth     Int32,
	Width     Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WmsResourceTypeDTO
(
	Id,
	Name,
	ShortName,
	Height,
	Depth,
	Width
)
VALUES
(toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),'Resource Name','RN',110,256,333)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS WmsLoadCarrierDTO
(
	Id                          UUID,
	Status                      Int32,
	ResourceLabel               Nullable(String),
	ResourceLabelNVE            Nullable(String),
	ParentResourceID            Nullable(UUID),
	TypeID                      Nullable(UUID),
	HeightClass                 Nullable(Int32),
	CurrentWeightOfResource     Nullable(Decimal128(10)),
	WidthClass                  Nullable(Int32),
	LengthClass                 Nullable(Int32),
	OriginalResourceID          Nullable(UUID),
	LastGlobalTaskID            Nullable(UUID),
	WashingDate                 Nullable(DateTime64(7)),
	ResourcePointID             Nullable(UUID),
	Height                      Nullable(Decimal128(10)),
	Width                       Nullable(Decimal128(10)),
	Length                      Nullable(Decimal128(10)),
	TechnicalValues             Nullable(String),
	RearrangementCount          Int32,
	IsVirtual                   Bool,
	ErrorMessage                Nullable(String),
	FillingDegree               Nullable(Decimal128(10)),
	LastInventoryCheckTimeStamp Nullable(DateTime64(7)),
	Segmentation                Nullable(String),
	DontTouch                   Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WmsLoadCarrierDTO
(
	Id,
	Status,
	ResourceLabel,
	ResourceLabelNVE,
	ParentResourceID,
	TypeID,
	HeightClass,
	CurrentWeightOfResource,
	WidthClass,
	LengthClass,
	OriginalResourceID,
	LastGlobalTaskID,
	WashingDate,
	ResourcePointID,
	Height,
	Width,
	Length,
	TechnicalValues,
	RearrangementCount,
	IsVirtual,
	ErrorMessage,
	FillingDegree,
	LastInventoryCheckTimeStamp,
	Segmentation,
	DontTouch
)
VALUES
(toUUID('a948600d-de21-4f74-8ac2-9516b287076e'),0,NULL,NULL,NULL,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,false,NULL,NULL,NULL,NULL,false)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WMS_ResourceA

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS WMS_ResourceA
(
	Id                          UUID,
	Status                      Int32,
	ResourceLabel               Nullable(String),
	ResourceLabelNVE            Nullable(String),
	ParentResourceID            Nullable(UUID),
	TypeID                      Nullable(UUID),
	HeightClass                 Nullable(Int32),
	CurrentWeightOfResource     Nullable(Decimal128(10)),
	WidthClass                  Nullable(Int32),
	LengthClass                 Nullable(Int32),
	OriginalResourceID          Nullable(UUID),
	LastGlobalTaskID            Nullable(UUID),
	WashingDate                 Nullable(DateTime64(7)),
	ResourcePointID             Nullable(UUID),
	Height                      Nullable(Decimal128(10)),
	Width                       Nullable(Decimal128(10)),
	Length                      Nullable(Decimal128(10)),
	TechnicalValues             Nullable(String),
	RearrangementCount          Int32,
	IsVirtual                   Bool,
	ErrorMessage                Nullable(String),
	FillingDegree               Nullable(Decimal128(10)),
	LastInventoryCheckTimeStamp Nullable(DateTime64(7)),
	Segmentation                Nullable(String),
	DontTouch                   Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO WMS_ResourceA
(
	Id,
	Status,
	ResourceLabel,
	ResourceLabelNVE,
	ParentResourceID,
	TypeID,
	HeightClass,
	CurrentWeightOfResource,
	WidthClass,
	LengthClass,
	OriginalResourceID,
	LastGlobalTaskID,
	WashingDate,
	ResourcePointID,
	Height,
	Width,
	Length,
	TechnicalValues,
	RearrangementCount,
	IsVirtual,
	ErrorMessage,
	FillingDegree,
	LastInventoryCheckTimeStamp,
	Segmentation,
	DontTouch
)
VALUES
(toUUID('bd3973a5-4323-4dd8-9f4f-df9f93e2a627'),0,NULL,NULL,NULL,toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11'),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,false,NULL,NULL,NULL,NULL,false)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t2.Id,
	t2.Status,
	t2.ResourceLabel,
	t2.ResourceLabelNVE,
	t2.ParentResourceID,
	t2.TypeID,
	t2.HeightClass,
	t2.CurrentWeightOfResource,
	t2.WidthClass,
	t2.LengthClass,
	t2.OriginalResourceID,
	t2.LastGlobalTaskID,
	t2.WashingDate,
	t2.ResourcePointID,
	t2.Height,
	t2.Width,
	t2.Length_1,
	t2.TechnicalValues,
	t2.RearrangementCount,
	t2.IsVirtual,
	t2.ErrorMessage,
	t2.FillingDegree,
	t2.LastInventoryCheckTimeStamp,
	t2.Segmentation,
	t2.DontTouch,
	tp.Id,
	tp.Name,
	tp.ShortName,
	tp.Height,
	tp.Depth,
	tp.Width
FROM
	(
		SELECT
			res.Id as Id,
			res.Status as Status,
			res.ResourceLabel as ResourceLabel,
			res.ResourceLabelNVE as ResourceLabelNVE,
			res.ParentResourceID as ParentResourceID,
			res.TypeID as TypeID,
			res.HeightClass as HeightClass,
			res.CurrentWeightOfResource as CurrentWeightOfResource,
			res.WidthClass as WidthClass,
			res.LengthClass as LengthClass,
			res.OriginalResourceID as OriginalResourceID,
			res.LastGlobalTaskID as LastGlobalTaskID,
			res.WashingDate as WashingDate,
			res.ResourcePointID as ResourcePointID,
			res.Height as Height,
			res.Width as Width,
			res.Length as Length_1,
			res.TechnicalValues as TechnicalValues,
			res.RearrangementCount as RearrangementCount,
			res.IsVirtual as IsVirtual,
			res.ErrorMessage as ErrorMessage,
			res.FillingDegree as FillingDegree,
			res.LastInventoryCheckTimeStamp as LastInventoryCheckTimeStamp,
			res.Segmentation as Segmentation,
			res.DontTouch as DontTouch
		FROM
			WmsLoadCarrierDTO res
		UNION DISTINCT
		SELECT
			t1.Id as Id,
			t1.Status as Status,
			t1.ResourceLabel as ResourceLabel,
			t1.ResourceLabelNVE as ResourceLabelNVE,
			t1.ParentResourceID as ParentResourceID,
			t1.TypeID as TypeID,
			t1.HeightClass as HeightClass,
			t1.CurrentWeightOfResource as CurrentWeightOfResource,
			t1.WidthClass as WidthClass,
			t1.LengthClass as LengthClass,
			t1.OriginalResourceID as OriginalResourceID,
			t1.LastGlobalTaskID as LastGlobalTaskID,
			t1.WashingDate as WashingDate,
			t1.ResourcePointID as ResourcePointID,
			t1.Height as Height,
			t1.Width as Width,
			t1.Length as Length_1,
			t1.TechnicalValues as TechnicalValues,
			t1.RearrangementCount as RearrangementCount,
			t1.IsVirtual as IsVirtual,
			t1.ErrorMessage as ErrorMessage,
			t1.FillingDegree as FillingDegree,
			t1.LastInventoryCheckTimeStamp as LastInventoryCheckTimeStamp,
			t1.Segmentation as Segmentation,
			t1.DontTouch as DontTouch
		FROM
			WMS_ResourceA t1
	) t2
		LEFT JOIN WmsResourceTypeDTO tp ON t2.TypeID = tp.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WMS_ResourceA

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WmsLoadCarrierDTO

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WmsResourceTypeDTO

