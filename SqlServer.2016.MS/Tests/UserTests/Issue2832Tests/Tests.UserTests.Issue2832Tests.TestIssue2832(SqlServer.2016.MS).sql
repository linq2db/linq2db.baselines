(243923) SELECT 
	t243923.Id = t243922.Id
FROM [DctSetpointtype(243922)] as t243922 (spt)
		LEFT JOIN (
			[VWellTree(243925)] as t243925 (t2)
				INNER JOIN [DctOu(243927)] as t243927 (tp2) ON ({t243925.ShopId?}? = {t243927.Id})
				LEFT JOIN [UacUsersDatagroup(243930)] as t243930 (cudg) ON ({t243927.Id} = {t243930.DatagroupId} AND {t243930.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(243935)] as t243935 (oudg) ON ({t243927.ParentId?}? = {t243935.DatagroupId} AND {t243935.UserId} = 150 AND {t243935.Inheritablepermission} > 0)
				INNER JOIN [Deviation(243955)] as t243955 (d) ON ({t243925.WellId?}? = {t243955.WellId})
		)  ON ({t243955.SetpointtypeId} = {t243922.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t243930.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t243935.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
