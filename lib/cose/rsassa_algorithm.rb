# frozen_string_literal: true

require "cose"

RSASSAAlgorithm = Struct.new(:id, :name, :hash_function, :kty)

COSE::Algorithm.register(RSASSAAlgorithm.new(-257, "RS256", "SHA256", COSE::Key::RSA::KTY_RSA))
COSE::Algorithm.register(RSASSAAlgorithm.new(-258, "RS384", "SHA384", COSE::Key::RSA::KTY_RSA))
COSE::Algorithm.register(RSASSAAlgorithm.new(-259, "RS512", "SHA512", COSE::Key::RSA::KTY_RSA))
COSE::Algorithm.register(RSASSAAlgorithm.new(-65535, "RS1", "SHA1", COSE::Key::RSA::KTY_RSA))
