# Pass QR

Convenience commands for reading and inserting QRs in [pass] on macOS. Especially useful with QR encoded [2FA] secrets.

[pass]: https://www.passwordstore.org/
[2FA]: https://www.securenvoy.com/two-factor-authentication/what-is-2fa.shtm

## Install

### Homebrew
```
brew tap klaaspieter/homebrew-kpa
brew install pass-qr
```

### Manual


```
git clone https://github.com/klaaspieter/pass-qr.git
make install
```

Note that `pass`, `qrencode`, `pngpaste` and `zbar` have to be installed manually too.

### Requirements

- pass 1.7.0 or greater.
- Enable extensions by setting `PASSWORD_STORE_ENABLE_EXTENSIONS=true`

## Use

```
pass insert-qr pass-name
Inserts a QR into the password store called pass-name. This will obtain the QR from the (macOS) pasteboard using `pngpaste` and decode the QR using `zbarimg`.

pass show-qr pass-name
Decrypt and quicklooks the secret named pass-name as QR code. This generates the QR by passing the password to `qrencode`.
```

## Examples

Add a 2FA secret to store (assumes there is a QR encoded secret on the pasteboard)

```
pass insert-qr 2fa-secret
```

Quicklook existing password as QR

```
pass show-qr 2fa-secret
```

