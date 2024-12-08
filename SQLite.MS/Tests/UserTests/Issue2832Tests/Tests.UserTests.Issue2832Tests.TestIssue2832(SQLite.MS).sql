(703671) SELECT 
	t703671.Id = t703670.Id
FROM [DctSetpointtype(703670)] as t703670 (spt)
		LEFT JOIN (
			[VWellTree(703673)] as t703673 (t2)
				INNER JOIN [DctOu(703675)] as t703675 (tp2) ON ({t703673.ShopId?}? = {t703675.Id})
				LEFT JOIN [UacUsersDatagroup(703678)] as t703678 (cudg) ON ({t703675.Id} = {t703678.DatagroupId} AND {t703678.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703683)] as t703683 (oudg) ON ({t703675.ParentId?}? = {t703683.DatagroupId} AND {t703683.UserId} = 150 AND {t703683.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703703)] as t703703 (d) ON ({t703673.WellId?}? = {t703703.WellId})
		)  ON ({t703703.SetpointtypeId} = {t703670.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703678.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703683.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
