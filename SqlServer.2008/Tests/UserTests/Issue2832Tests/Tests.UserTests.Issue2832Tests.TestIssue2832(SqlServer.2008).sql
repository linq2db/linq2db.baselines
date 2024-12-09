(238938) SELECT 
	t238938.Id = t238937.Id
FROM [DctSetpointtype(238937)] as t238937 (spt)
		LEFT JOIN (
			[VWellTree(238940)] as t238940 (t2)
				INNER JOIN [DctOu(238942)] as t238942 (tp2) ON ({t238940.ShopId?}? = {t238942.Id})
				LEFT JOIN [UacUsersDatagroup(238945)] as t238945 (cudg) ON ({t238942.Id} = {t238945.DatagroupId} AND {t238945.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(238950)] as t238950 (oudg) ON ({t238942.ParentId?}? = {t238950.DatagroupId} AND {t238950.UserId} = 150 AND {t238950.Inheritablepermission} > 0)
				INNER JOIN [Deviation(238970)] as t238970 (d) ON ({t238940.WellId?}? = {t238970.WellId})
		)  ON ({t238970.SetpointtypeId} = {t238937.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t238945.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t238950.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
