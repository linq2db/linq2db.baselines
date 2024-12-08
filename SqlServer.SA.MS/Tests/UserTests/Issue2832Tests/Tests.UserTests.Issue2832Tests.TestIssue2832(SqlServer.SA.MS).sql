(492040) SELECT 
	t492040.Id = t492039.Id
FROM [DctSetpointtype(492039)] as t492039 (spt)
		LEFT JOIN (
			[VWellTree(492042)] as t492042 (t2)
				INNER JOIN [DctOu(492044)] as t492044 (tp2) ON ({t492042.ShopId?}? = {t492044.Id})
				LEFT JOIN [UacUsersDatagroup(492047)] as t492047 (cudg) ON ({t492044.Id} = {t492047.DatagroupId} AND {t492047.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(492052)] as t492052 (oudg) ON ({t492044.ParentId?}? = {t492052.DatagroupId} AND {t492052.UserId} = 150 AND {t492052.Inheritablepermission} > 0)
				INNER JOIN [Deviation(492072)] as t492072 (d) ON ({t492042.WellId?}? = {t492072.WellId})
		)  ON ({t492072.SetpointtypeId} = {t492039.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t492047.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t492052.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
