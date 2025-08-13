BeforeExecute
-- ClickHouse.Driver ClickHouse

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

