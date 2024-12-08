(205914) SELECT 
	t205914.Id = t205913.Id
FROM [DctSetpointtype(205913)] as t205913 (spt)
		LEFT JOIN (
			[VWellTree(205916)] as t205916 (t2)
				INNER JOIN [DctOu(205918)] as t205918 (tp2) ON ({t205916.ShopId?}? = {t205918.Id})
				LEFT JOIN [UacUsersDatagroup(205921)] as t205921 (cudg) ON ({t205918.Id} = {t205921.DatagroupId} AND {t205921.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205926)] as t205926 (oudg) ON ({t205918.ParentId?}? = {t205926.DatagroupId} AND {t205926.UserId} = 150 AND {t205926.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205946)] as t205946 (d) ON ({t205916.WellId?}? = {t205946.WellId})
		)  ON ({t205946.SetpointtypeId} = {t205913.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205921.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205926.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
