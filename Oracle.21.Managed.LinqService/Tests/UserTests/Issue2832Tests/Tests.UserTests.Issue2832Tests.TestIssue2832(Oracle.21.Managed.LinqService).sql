(140874) SELECT 
	t140874.Id = t140873.Id
FROM [DctSetpointtype(140873)] as t140873 (spt)
		LEFT JOIN (
			[VWellTree(140876)] as t140876 (t2)
				INNER JOIN [DctOu(140878)] as t140878 (tp2) ON ({t140876.ShopId?}? = {t140878.Id})
				LEFT JOIN [UacUsersDatagroup(140881)] as t140881 (cudg) ON ({t140878.Id} = {t140881.DatagroupId} AND {t140881.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140886)] as t140886 (oudg) ON ({t140878.ParentId?}? = {t140886.DatagroupId} AND {t140886.UserId} = 150 AND {t140886.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140906)] as t140906 (d) ON ({t140876.WellId?}? = {t140906.WellId})
		)  ON ({t140906.SetpointtypeId} = {t140873.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140881.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140886.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
