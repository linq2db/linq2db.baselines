(140886) SELECT 
	t140886.Id = t140885.Id
FROM [DctSetpointtype(140885)] as t140885 (spt)
		LEFT JOIN (
			[VWellTree(140888)] as t140888 (t2)
				INNER JOIN [DctOu(140890)] as t140890 (tp2) ON ({t140888.ShopId?}? = {t140890.Id})
				LEFT JOIN [UacUsersDatagroup(140893)] as t140893 (cudg) ON ({t140890.Id} = {t140893.DatagroupId} AND {t140893.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140898)] as t140898 (oudg) ON ({t140890.ParentId?}? = {t140898.DatagroupId} AND {t140898.UserId} = 150 AND {t140898.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140918)] as t140918 (d) ON ({t140888.WellId?}? = {t140918.WellId})
		)  ON ({t140918.SetpointtypeId} = {t140885.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140893.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140898.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
