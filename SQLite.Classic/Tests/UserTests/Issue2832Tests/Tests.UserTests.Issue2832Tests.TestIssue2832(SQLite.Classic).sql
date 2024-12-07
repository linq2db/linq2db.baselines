(703803) SELECT 
	t703803.Id = t703802.Id
FROM [DctSetpointtype(703802)] as t703802 (spt)
		LEFT JOIN (
			[VWellTree(703805)] as t703805 (t2)
				INNER JOIN [DctOu(703807)] as t703807 (tp2) ON ({t703805.ShopId?}? = {t703807.Id})
				LEFT JOIN [UacUsersDatagroup(703810)] as t703810 (cudg) ON ({t703807.Id} = {t703810.DatagroupId} AND {t703810.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703815)] as t703815 (oudg) ON ({t703807.ParentId?}? = {t703815.DatagroupId} AND {t703815.UserId} = 150 AND {t703815.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703835)] as t703835 (d) ON ({t703805.WellId?}? = {t703835.WellId})
		)  ON ({t703835.SetpointtypeId} = {t703802.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703810.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703815.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
