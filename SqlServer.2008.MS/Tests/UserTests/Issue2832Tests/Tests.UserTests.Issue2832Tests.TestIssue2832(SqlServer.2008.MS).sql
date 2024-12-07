(237969) SELECT 
	t237969.Id = t237968.Id
FROM [DctSetpointtype(237968)] as t237968 (spt)
		LEFT JOIN (
			[VWellTree(237971)] as t237971 (t2)
				INNER JOIN [DctOu(237973)] as t237973 (tp2) ON ({t237971.ShopId?}? = {t237973.Id})
				LEFT JOIN [UacUsersDatagroup(237976)] as t237976 (cudg) ON ({t237973.Id} = {t237976.DatagroupId} AND {t237976.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(237981)] as t237981 (oudg) ON ({t237973.ParentId?}? = {t237981.DatagroupId} AND {t237981.UserId} = 150 AND {t237981.Inheritablepermission} > 0)
				INNER JOIN [Deviation(238001)] as t238001 (d) ON ({t237971.WellId?}? = {t238001.WellId})
		)  ON ({t238001.SetpointtypeId} = {t237968.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t237976.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t237981.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
