(242208) SELECT 
	t242208.Id = t242207.Id
FROM [DctSetpointtype(242207)] as t242207 (spt)
		LEFT JOIN (
			[VWellTree(242210)] as t242210 (t2)
				INNER JOIN [DctOu(242212)] as t242212 (tp2) ON ({t242210.ShopId?}? = {t242212.Id})
				LEFT JOIN [UacUsersDatagroup(242215)] as t242215 (cudg) ON ({t242212.Id} = {t242215.DatagroupId} AND {t242215.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(242220)] as t242220 (oudg) ON ({t242212.ParentId?}? = {t242220.DatagroupId} AND {t242220.UserId} = 150 AND {t242220.Inheritablepermission} > 0)
				INNER JOIN [Deviation(242240)] as t242240 (d) ON ({t242210.WellId?}? = {t242240.WellId})
		)  ON ({t242240.SetpointtypeId} = {t242207.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t242215.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t242220.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
