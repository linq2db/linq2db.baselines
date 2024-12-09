(239869) SELECT 
	t239869.Id = t239868.Id
FROM [DctSetpointtype(239868)] as t239868 (spt)
		LEFT JOIN (
			[VWellTree(239871)] as t239871 (t2)
				INNER JOIN [DctOu(239873)] as t239873 (tp2) ON ({t239871.ShopId?}? = {t239873.Id})
				LEFT JOIN [UacUsersDatagroup(239876)] as t239876 (cudg) ON ({t239873.Id} = {t239876.DatagroupId} AND {t239876.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239881)] as t239881 (oudg) ON ({t239873.ParentId?}? = {t239881.DatagroupId} AND {t239881.UserId} = 150 AND {t239881.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239901)] as t239901 (d) ON ({t239871.WellId?}? = {t239901.WellId})
		)  ON ({t239901.SetpointtypeId} = {t239868.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239876.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239881.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
