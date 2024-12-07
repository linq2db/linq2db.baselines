(244914) SELECT 
	t244914.Id = t244913.Id
FROM [DctSetpointtype(244913)] as t244913 (spt)
		LEFT JOIN (
			[VWellTree(244916)] as t244916 (t2)
				INNER JOIN [DctOu(244918)] as t244918 (tp2) ON ({t244916.ShopId?}? = {t244918.Id})
				LEFT JOIN [UacUsersDatagroup(244921)] as t244921 (cudg) ON ({t244918.Id} = {t244921.DatagroupId} AND {t244921.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244926)] as t244926 (oudg) ON ({t244918.ParentId?}? = {t244926.DatagroupId} AND {t244926.UserId} = 150 AND {t244926.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244946)] as t244946 (d) ON ({t244916.WellId?}? = {t244946.WellId})
		)  ON ({t244946.SetpointtypeId} = {t244913.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244921.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t244926.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
