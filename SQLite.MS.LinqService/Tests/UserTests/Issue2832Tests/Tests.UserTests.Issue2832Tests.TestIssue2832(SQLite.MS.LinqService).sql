(703751) SELECT 
	t703751.Id = t703750.Id
FROM [DctSetpointtype(703750)] as t703750 (spt)
		LEFT JOIN (
			[VWellTree(703753)] as t703753 (t2)
				INNER JOIN [DctOu(703755)] as t703755 (tp2) ON ({t703753.ShopId?}? = {t703755.Id})
				LEFT JOIN [UacUsersDatagroup(703758)] as t703758 (cudg) ON ({t703755.Id} = {t703758.DatagroupId} AND {t703758.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703763)] as t703763 (oudg) ON ({t703755.ParentId?}? = {t703763.DatagroupId} AND {t703763.UserId} = 150 AND {t703763.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703783)] as t703783 (d) ON ({t703753.WellId?}? = {t703783.WellId})
		)  ON ({t703783.SetpointtypeId} = {t703750.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703758.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703763.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
