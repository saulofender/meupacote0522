test_that("media_vol() funciona", {

  resultado_cantareira <- media_vol("Cantareira")

  expect_equal(nrow(resultado_cantareira), 1)

  expect_s3_class(resultado_cantareira, "tbl_df")

  expect_snapshot(resultado_cantareira)
  #nrow(resultado_cantareira) == 1

  # expectativa que dê erro quando não falar qual é o sistema
  expect_error(media_vol())

})

# mostra em (%) o quanto meus testes ainda precisam para estar concluído
#covr::report()

# mais exemplos de testes:
# https://github.com/beatrizmilz/mananciais/tree/master/tests/testthat
