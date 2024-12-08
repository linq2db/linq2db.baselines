(492001) SELECT 
	t492001.Id = t492000.Id
FROM [DctSetpointtype(492000)] as t492000 (spt)
		LEFT JOIN (
			[VWellTree(492003)] as t492003 (t2)
				INNER JOIN [DctOu(492005)] as t492005 (tp2) ON ({t492003.ShopId?}? = {t492005.Id})
				LEFT JOIN [UacUsersDatagroup(492008)] as t492008 (cudg) ON ({t492005.Id} = {t492008.DatagroupId} AND {t492008.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(492013)] as t492013 (oudg) ON ({t492005.ParentId?}? = {t492013.DatagroupId} AND {t492013.UserId} = 150 AND {t492013.Inheritablepermission} > 0)
				INNER JOIN [Deviation(492033)] as t492033 (d) ON ({t492003.WellId?}? = {t492033.WellId})
		)  ON ({t492033.SetpointtypeId} = {t492000.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t492008.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t492013.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
