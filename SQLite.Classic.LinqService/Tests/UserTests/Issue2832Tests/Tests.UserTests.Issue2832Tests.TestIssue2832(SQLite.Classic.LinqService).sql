(703881) SELECT 
	t703881.Id = t703880.Id
FROM [DctSetpointtype(703880)] as t703880 (spt)
		LEFT JOIN (
			[VWellTree(703883)] as t703883 (t2)
				INNER JOIN [DctOu(703885)] as t703885 (tp2) ON ({t703883.ShopId?}? = {t703885.Id})
				LEFT JOIN [UacUsersDatagroup(703888)] as t703888 (cudg) ON ({t703885.Id} = {t703888.DatagroupId} AND {t703888.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(703893)] as t703893 (oudg) ON ({t703885.ParentId?}? = {t703893.DatagroupId} AND {t703893.UserId} = 150 AND {t703893.Inheritablepermission} > 0)
				INNER JOIN [Deviation(703913)] as t703913 (d) ON ({t703883.WellId?}? = {t703913.WellId})
		)  ON ({t703913.SetpointtypeId} = {t703880.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t703888.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t703893.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
