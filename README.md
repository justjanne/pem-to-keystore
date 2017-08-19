# Pem-To-KeyStore

This project aims to provide a simple containerized solution for building a Java
Keystore out of PEM certificates. This is useful when dealing with Java
applications that can only read a Java Keystore, the original use case was
Apache James running on Kubernetes.

This container is based on the `openjdk:jre-alpine` container.

## Configuration

The following parameters can be configured via environmental variables:

| Environmental Variable | Default Value      | Description                                                |
| ---------------------- | ------------------ | ---------------------------------------------------------- |
| `SRC_PATH_CRT`         | `/src/tls.crt`     | Path to the certificate of the keypair that is to be added |
| `SRC_PATH_KEY`         | `/src/tls.key`     | Path to the private key of the keypair that is to be added |
| `TARGET_PATH_KEYSTORE` | `/target/keystore` | Path to where the keystore should be placed in the end     |
| `TARGET_PASSWORD`      | `password`         | Password that shall be set for the keystore and password   |
| `TARGET_ALIAS`         | `key`              | Alias under which the key should be added to the keystore  |

## License

> This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.  
> This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.  
> You should have received a copy of the GNU General Public License along with this program. If not, see <http://www.gnu.org/licenses/>.  
