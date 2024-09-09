add_rules("mode.debug", "mode.release")
add_requires("cosmocc")
add_packages("cosmocc")
set_toolchains("@cosmocc")

target("mbedtls-cosmo")
    set_kind("static")
    add_files("aes.c")
    add_files("aesce.c")
    add_files("aesni.c")
    add_files("asn1parse.c")
    add_files("asn1write.c")
    add_files("base64.c")
    add_files("bigmul.c")
    add_files("bigmul4.c")
    add_files("bignum.c")
    add_files("bigshift.c")
    add_files("blake2b256.c")
    add_files("ccm.c")
    add_files("certs.c")
    add_files("chacha20.c")
    add_files("chachapoly.c")
    add_files("cipher.c")
    add_files("cipher_wrap.c")
    add_files("ctr_drbg.c")
    add_files("debug.c")
    add_files("des.c")
    add_files("describecode.c")
    add_files("dhm.c")
    add_files("ecdh.c")
    add_files("ecdh_everest.c")
    add_files("ecdsa.c")
    add_files("ecp.c")
    add_files("ecp256.c")
    add_files("ecp384.c")
    add_files("ecp_curves.c")
    add_files("ecpshl.c")
    add_files("entropy.c")
    add_files("entropy_poll.c")
    add_files("error.c")
    add_files("everest.c")
    add_files("formatclientciphers.c")
    add_files("gcm.c")
    add_files("getalertdescription.c")
    add_files("getciphersuite.c")
    add_files("getciphersuitename.c")
    add_files("getsslstatename.c")
    add_files("hkdf.c")
    add_files("hmac_drbg.c")
    add_files("isciphersuitegood.c")
    add_files("karatsuba.c")
    add_files("md.c")
    add_files("md5.c")
    add_files("md5t.c")
    add_files("mdtype.c")
    add_files("memory_buffer_alloc.c")
    add_files("net_sockets.c")
    add_files("nist_kw.c")
    add_files("notice.c")
    add_files("oid.c")
    add_files("param.c")
    add_files("pem.c")
    add_files("pk.c")
    add_files("pk_wrap.c")
    add_files("pkcs5.c")
    add_files("pkparse.c")
    add_files("pktype.c")
    add_files("pkwrite.c")
    add_files("platform.c")
    add_files("poly1305.c")
    add_files("rando.c")
    add_files("rsa.c")
    add_files("rsa_internal.c")
    add_files("san.c")
    add_files("secp256r1.c")
    add_files("secp384r1.c")
    add_files("sha1.c")
    add_files("sha1t.c")
    add_files("sha256.c")
    add_files("sha256t.c")
    add_files("sha512.c")
    add_files("sha512t.c")
    add_files("shakedescription.c")
    add_files("shiftright-avx.c")
    add_files("shiftright.c")
    add_files("sigalg.c")
    add_files("srtp.c")
    add_files("ssl_cache.c")
    add_files("ssl_ciphersuites.c")
    add_files("ssl_cli.c")
    add_files("ssl_cookie.c")
    add_files("ssl_msg.c")
    add_files("ssl_srv.c")
    add_files("ssl_ticket.c")
    add_files("ssl_tls.c")
    add_files("ssl_tls13_keys.c")
    add_files("x509.c")
    add_files("x509_create.c")
    add_files("x509_crl.c")
    add_files("x509_crt.c")
    add_files("x509_csr.c")
    add_files("x509write_crt.c")
    add_files("x509write_csr.c")
    add_files("zeroize.c")

--
-- If you want to known more usage about xmake, please see https://xmake.io
--
-- ## FAQ
--
-- You can enter the project directory firstly before building project.
--
--   $ cd projectdir
--
-- 1. How to build project?
--
--   $ xmake
--
-- 2. How to configure project?
--
--   $ xmake f -p [macosx|linux|iphoneos ..] -a [x86_64|i386|arm64 ..] -m [debug|release]
--
-- 3. Where is the build output directory?
--
--   The default output directory is `./build` and you can configure the output directory.
--
--   $ xmake f -o outputdir
--   $ xmake
--
-- 4. How to run and debug target after building project?
--
--   $ xmake run [targetname]
--   $ xmake run -d [targetname]
--
-- 5. How to install target to the system directory or other output directory?
--
--   $ xmake install
--   $ xmake install -o installdir
--
-- 6. Add some frequently-used compilation flags in xmake.lua
--
-- @code
--    -- add debug and release modes
--    add_rules("mode.debug", "mode.release")
--
--    -- add macro definition
--    add_defines("NDEBUG", "_GNU_SOURCE=1")
--
--    -- set warning all as error
--    set_warnings("all", "error")
--
--    -- set language: c99, c++11
--    set_languages("c99", "c++11")
--
--    -- set optimization: none, faster, fastest, smallest
--    set_optimize("fastest")
--
--    -- add include search directories
--    add_includedirs("/usr/include", "/usr/local/include")
--
--    -- add link libraries and search directories
--    add_links("tbox")
--    add_linkdirs("/usr/local/lib", "/usr/lib")
--
--    -- add system link libraries
--    add_syslinks("z", "pthread")
--
--    -- add compilation and link flags
--    add_cxflags("-stdnolib", "-fno-strict-aliasing")
--    add_ldflags("-L/usr/local/lib", "-lpthread", {force = true})
--
-- @endcode
--

