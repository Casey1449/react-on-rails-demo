import ReactOnRails from 'react-on-rails';

import HelloWorld from '../app/components/HelloWorld';

if (module.hot) {
  module.hot.accept();
}


ReactOnRails.register({
    HelloWorld,
  })

