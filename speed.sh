#!/bin/sh
make -j8 o//third_party/mbedtls || exit

run() {
  echo $1
  $1
}

(
  run o//./test/test_suite_aes.cbc
  run o//./test/test_suite_aes.cfb
  run o//./test/test_suite_aes.ecb
  run o//./test/test_suite_aes.ofb
  run o//./test/test_suite_aes.rest
  run o//./test/test_suite_aes.xts
  run o//./test/test_suite_asn1parse
  run o//./test/test_suite_asn1write
  run o//./test/test_suite_base64
  run o//./test/test_suite_blowfish
  run o//./test/test_suite_chacha20
  run o//./test/test_suite_chachapoly
  run o//./test/test_suite_cipher.aes
  run o//./test/test_suite_cipher.blowfish
  run o//./test/test_suite_cipher.ccm
  run o//./test/test_suite_cipher.chacha20
  run o//./test/test_suite_cipher.chachapoly
  run o//./test/test_suite_cipher.des
  run o//./test/test_suite_cipher.gcm
  run o//./test/test_suite_cipher.misc
  run o//./test/test_suite_cipher.nist_kw
  run o//./test/test_suite_cipher.null
  run o//./test/test_suite_cipher.padding
  run o//./test/test_suite_ctr_drbg
  run o//./test/test_suite_des
  run o//./test/test_suite_dhm
  run o//./test/test_suite_ecdh
  run o//./test/test_suite_ecdsa
  run o//./test/test_suite_ecjpake
  run o//./test/test_suite_ecp
  run o//./test/test_suite_entropy
  run o//./test/test_suite_error
  run o//./test/test_suite_gcm.aes128_de
  run o//./test/test_suite_gcm.aes128_en
  run o//./test/test_suite_gcm.aes192_de
  run o//./test/test_suite_gcm.aes192_en
  run o//./test/test_suite_gcm.aes256_de
  run o//./test/test_suite_gcm.aes256_en
  run o//./test/test_suite_gcm.misc
  run o//./test/test_suite_hkdf
  run o//./test/test_suite_hmac_drbg.misc
  run o//./test/test_suite_hmac_drbg.no_reseed
  run o//./test/test_suite_hmac_drbg.nopr
  run o//./test/test_suite_hmac_drbg.pr
  run o//./test/test_suite_md
  run o//./test/test_suite_mdx
  run o//./test/test_suite_memory_buffer_alloc
  run o//./test/test_suite_mpi
  run o//./test/test_suite_net
  run o//./test/test_suite_nist_kw
  run o//./test/test_suite_oid
  run o//./test/test_suite_pem
  run o//./test/test_suite_pk
  run o//./test/test_suite_pkcs1_v15
  run o//./test/test_suite_pkcs1_v21
  run o//./test/test_suite_pkcs5
  run o//./test/test_suite_pkparse
  run o//./test/test_suite_pkwrite
  run o//./test/test_suite_poly1305
  run o//./test/test_suite_random
  run o//./test/test_suite_rsa
  run o//./test/test_suite_shax
  run o//./test/test_suite_ssl
  run o//./test/test_suite_timing
  run o//./test/test_suite_version
  run o//./test/test_suite_x509parse
  run o//./test/test_suite_x509write
) | o//tool/build/deltaify2 | sort -n | tee speed.txt

mkdir -p ~/speed/mbedtls
cp speed.txt ~/speed/mbedtls/$(date +%Y-%m-%d-%H-%H).txt
