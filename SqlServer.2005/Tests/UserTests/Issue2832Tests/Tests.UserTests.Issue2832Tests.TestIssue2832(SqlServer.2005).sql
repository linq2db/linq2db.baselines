(217083) SELECT 
	t217083.Id = t217082.Id
FROM [DctSetpointtype(217082)] as t217082 (spt)
		LEFT JOIN (
			[VWellTree(217085)] as t217085 (t2)
				INNER JOIN [DctOu(217087)] as t217087 (tp2) ON ({t217085.ShopId?}? = {t217087.Id})
				LEFT JOIN [UacUsersDatagroup(217090)] as t217090 (cudg) ON ({t217087.Id} = {t217090.DatagroupId} AND {t217090.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(217095)] as t217095 (oudg) ON ({t217087.ParentId?}? = {t217095.DatagroupId} AND {t217095.UserId} = 150 AND {t217095.Inheritablepermission} > 0)
				INNER JOIN [Deviation(217115)] as t217115 (d) ON ({t217085.WellId?}? = {t217115.WellId})
		)  ON ({t217115.SetpointtypeId} = {t217082.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t217090.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t217095.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
