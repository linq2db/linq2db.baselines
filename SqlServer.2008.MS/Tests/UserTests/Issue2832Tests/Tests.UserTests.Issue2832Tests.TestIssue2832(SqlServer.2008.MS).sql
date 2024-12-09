(238977) SELECT 
	t238977.Id = t238976.Id
FROM [DctSetpointtype(238976)] as t238976 (spt)
		LEFT JOIN (
			[VWellTree(238979)] as t238979 (t2)
				INNER JOIN [DctOu(238981)] as t238981 (tp2) ON ({t238979.ShopId?}? = {t238981.Id})
				LEFT JOIN [UacUsersDatagroup(238984)] as t238984 (cudg) ON ({t238981.Id} = {t238984.DatagroupId} AND {t238984.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(238989)] as t238989 (oudg) ON ({t238981.ParentId?}? = {t238989.DatagroupId} AND {t238989.UserId} = 150 AND {t238989.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239009)] as t239009 (d) ON ({t238979.WellId?}? = {t239009.WellId})
		)  ON ({t239009.SetpointtypeId} = {t238976.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t238984.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t238989.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
