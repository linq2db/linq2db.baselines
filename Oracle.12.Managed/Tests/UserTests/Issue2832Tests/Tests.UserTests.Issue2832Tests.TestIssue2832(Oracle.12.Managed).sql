(140006) SELECT 
	t140006.Id = t140005.Id
FROM [DctSetpointtype(140005)] as t140005 (spt)
		LEFT JOIN (
			[VWellTree(140008)] as t140008 (t2)
				INNER JOIN [DctOu(140010)] as t140010 (tp2) ON ({t140008.ShopId?}? = {t140010.Id})
				LEFT JOIN [UacUsersDatagroup(140013)] as t140013 (cudg) ON ({t140010.Id} = {t140013.DatagroupId} AND {t140013.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140018)] as t140018 (oudg) ON ({t140010.ParentId?}? = {t140018.DatagroupId} AND {t140018.UserId} = 150 AND {t140018.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140038)] as t140038 (d) ON ({t140008.WellId?}? = {t140038.WellId})
		)  ON ({t140038.SetpointtypeId} = {t140005.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140013.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140018.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
